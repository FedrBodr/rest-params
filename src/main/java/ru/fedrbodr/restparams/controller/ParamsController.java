package ru.fedrbodr.restparams.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import ru.fedrbodr.restparams.enums.VisualAlgorithm;
import ru.fedrbodr.restparams.model.Parameters;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Dmitry Fedorenko on 22.10.2014.
 */
@Controller
public class ParamsController {
	private static final Logger logger = LoggerFactory.getLogger(ParamsController.class);

	//Map to store employees, // TODO use database hazelcast db instead map!
	Map<Integer, Parameters> paramsData = new HashMap<Integer, Parameters>();

	@RequestMapping(value = ParamsRestURIConstants.DUMMY_PARAMS, method = RequestMethod.GET)
	public @ResponseBody
    Parameters getDummyParams() {
		logger.info("Start getDummyParams");
		Parameters params = new Parameters();
		params.setColorHex("#ffb50b");
		params.setColorHex2("#ff0000");
		params.setColorHex3("#001aff");
		params.setColorHex20("#00ffbf");
		params.setColorHex21("#ff6a00");
		params.setInnerBoxesSize(1);
		params.setAroundBoxesSize(1);
		params.setDrawCountForReload(50);
		params.setRenderAlgorithmType(VisualAlgorithm.SIMPLE);
		paramsData.put(9999, params);
		return params;
	}

	@RequestMapping(value = ParamsRestURIConstants.GET_PARAMS, method = RequestMethod.GET)
	public @ResponseBody
    Parameters getParams() {
		logger.info("Start getParams");
		return paramsData.get(9999);
	}

    @RequestMapping(value = ParamsRestURIConstants.UPDATE_PARAMS, method = RequestMethod.PUT)
	public @ResponseBody
    Parameters updateParams(@RequestBody Parameters params) {
		logger.info("Start updateParams " + params);
		paramsData.put(9999, params);
		return params;
	}
}
