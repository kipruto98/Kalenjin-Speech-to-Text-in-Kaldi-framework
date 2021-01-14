# Use of Ubuntu OS will make alot of work easy

[https://kaldi-asr.org/doc/kaldi_for_dummies.html]

This is a list of features, scripts, blogs and resources for better using Kaldi [http://kaldi-asr.org/]. Please fill free to contribute by adding more links!

Good resources for beginners:
How to start with kaldi and speech recognition - A Medium post (by me) regarding the general structure of the Kaldi project and its different parts. #In my opinion you should start here.
Kaldi for Dummies tutorial - The basic tutorial in the Kaldi documentation. It is really good for "hands on" experience but it is not so well explained.
How to Train a Deep Neural Net Acoustic Model with Kaldi - A tutorial by Josh Meyer for specifically running Kaldi with DNN
Building Speech Recognition Systems with the Kaldi Toolkit - This presentation is extremely long but also extremely helpful. Its the most complete source of information about the training process and its development.
Eleanor Chodroff Kaldi Tutorial - A good in depth tutorial about the training process with a lot of code examples.
Speaker Diarization with Kaldi - A tutorial about X-Vectors and Speaker Diarization.
Understanding a typical Kaldi Recipe - A good article which explains what each stage of a mini_librispeech recipe does.
Good resources for more complex stuff:
Some Kaldi Notes - Some advanced notes that is highly recommended to read if you want to be a more trained user.
Decoding graph construction in Kaldi: A visual walkthrough - If you want to understand the different parts of the Decoding graph you should probably read this. It is required to understand those concepts for debugging your graph in the development of a new model.
Good Utils
Deep in the utils folder inside the wsj recipe there are some interesting scripts that helped me a lot during my work. Knowing all of them will probably help you a lot, here are some basic ones that you should probably start with:

perturb_data_dir_speed_3way.sh - this script will help you to change the speaking speed of different utterances without creating excess files. It does this by implementing an SoX command to your wav file and copying and editing all the other files in your folder. Using this script and also the next one is a must-have in most state-of-the-art systems and will help your model to generalize better.
perturb_data_dir_volume.sh - this script will do exactly the same but will change the volume of the utterances.
resample_data_dir.sh - You want to make a new model for different sampling rate but you don't want to manually re-sample you entire data? this script will help you to do it, again with a SoX command.
combine_data.sh - If you have multiple datasets and you want to combine all of the manually, there is no need to do it file after file. this script will take an entire data directory and will combine all the files into the same new directory.
summarize_logs.pl & summarize_warnings.pl - When you run a process in Kaldi with multiple jobs, each job will have different a log file. when you are using a lot of jobs it might be hard to look at all of those logs. those scripts will help you to summarize all of the logs into one readable file.
Finetune acoustic model - If you don't have a lot of data You can always train a Kaldi model from the closest domain to your domain and then take the final.mdl file and finetune it with your data.
Good Kaldi "production ready" examples 
There are some open-source projects around that use Kaldi as a platform for building an ASR systems for real-time usage. by seeing those projects you can learn a lot about how to implement such system of you own.

online2-tcp-nnet3-decode-faster - A new excutable that was added to kaldi that creates a basic TCP server that can read the model and transcribe raw audio. If you want an easy to implement solution just to check your models easily, you should probably start here.
kaldi-gstreamer-server - this is a nice project that will help you to integrate Kaldi toolkit and the GStreamer framework, a popular framework that will help you to make a scalable ASR server
kaldi-offline-transcriber - A good example for a project that handles both training and decoding. It is being build for Estonian but can be easily transformed into any language.
compile Kaldi for android - You can also compile the Kaldi project in a way that will work directly on android devices. That might not be a good idea with a heavy model, but can be used to more constrained models.
VBDiarization - A good implementation of Speaker Diarization, it can be used with Kaldi pre-trained Xvector model.
tf-kaldi-speaker - A framework that combines TensorFlow and Kaldi in the context of speaker verification/identification tasks. The project has some pretrained model that were trained on huge datasets.
kaldi-adapt-lm - A tool that helps to adapt nnet3 chain models to a different language model.
