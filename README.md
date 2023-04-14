# whisper

## command line

[github.com/openai/whisper](https://github.com/openai/whisper)

model

```bash
whisper audio.wav --model {tiny|base|small|medium|large|}
```

language

```bash
whisper japanese.wav --language Japanese
```

## use API

[API REFERENCE >> Audio](https://platform.openai.com/docs/api-reference/audio)

transcriptions

```bash
curl https://api.openai.com/v1/audio/transcriptions \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -H "Content-Type: multipart/form-data" \
  -F file="@audio.m4a" \
  -F model="whisper-1" \
  -F response_format="srt"
```
