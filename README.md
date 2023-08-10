# AIT
 
Experimental usage of [AITemplate](https://github.com/facebookincubator/AITemplate).


[Pre-compiled modules](https://huggingface.co/datasets/Fizzledorf/AITemplate_V1_V2)

[New XL Modules](https://huggingface.co/Fizzledorf/AITemplateXL)(manual install for now while things get sorted, see [this comment](https://github.com/FizzleDorf/AIT/issues/15#issue-1841216049) for details and use the sdxl branch for required code changes.)

[Alternative Pre-compiled modules](https://huggingface.co/city96/AITemplate)

## ComfyUI custom node

### Installation

This repo can be cloned directly to ComfyUI's custom nodes folder.

Adjust the path as required, the example assumes you are working from the ComfyUI repo.
```
git clone https://github.com/hlky/AIT custom_nodes/AIT
```

### Modules

Modules will be automatically selected, downloaded, and decompressed by the plugin.

#### Nodes

##### Load AITemplate

![image](https://github.com/hlky/AIT/assets/106811348/75d25eac-4c50-4a83-bb47-58a10d38e094)

`Loaders > Load AITemplate`

#### Load AITemplate (ControlNet)

![image](https://github.com/hlky/AIT/assets/106811348/d410a55b-2d45-4e5c-8f36-50b1d3b84b4b)

`Loaders > Load AITemplate (ControlNet)`

#### VAE Decode (AITemplate)

![image](https://github.com/hlky/AIT/assets/106811348/75cfe24d-912a-4e7b-880f-18e97809d810)

`Latent > VAE Decode (AITemplate)`

#### VAE Encode (AITemplate)

![image](https://github.com/hlky/AIT/assets/106811348/7562c744-e3b1-4a63-9c49-b1a9875dbc47)

`Latent > VAE Encode (AITemplate)`

#### VAE Encode (AITemplate, Inpaint)

![image](https://github.com/hlky/AIT/assets/106811348/dce433cb-8160-4cba-9d87-829b0e75288e)

`Latent > Inpaint > VAE Encode (AITemplate)`


### Workflow

Example workflows in [`workflows/`](https://github.com/hlky/AIT/tree/main/workflows)

### Errors

* Part of the error will be printed by the AITemplate module so this will be above the trackback.

## Supported model types
* ControlNet
* CLIPTextModel
* UNet
* **Inpainting UNet**
* VAE
* **VAE encode**

## Developers

### [Compile](https://github.com/hlky/AIT/blob/main/docs/compile.md)

### [CLIP](https://github.com/hlky/AIT/blob/main/docs/clip.md)

### [ControlNet](https://github.com/hlky/AIT/blob/main/docs/controlnet.md)

### [CompVis](https://github.com/hlky/AIT/blob/main/docs/compvis.md)

### [UNet](https://github.com/hlky/AIT/blob/main/docs/unet.md)

### [VAE](https://github.com/hlky/AIT/blob/main/docs/vae.md)
