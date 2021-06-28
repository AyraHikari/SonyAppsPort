.class public Lcom/sonyericsson/music/common/AudioMimeTypes;
.super Ljava/lang/Object;
.source "AudioMimeTypes.java"


# static fields
.field public static final CAN_BE_HIGH_RES_MIME_TYPES:[Ljava/lang/String;

.field public static final MIDI_EXTENSION:Ljava/lang/String; = ".midi"

.field public static final MID_EXTENSION:Ljava/lang/String; = ".mid"

.field public static final MIME_TYPE_AIFF:Ljava/lang/String; = "audio/x-aiff"

.field public static final MIME_TYPE_ALAC:Ljava/lang/String; = "audio/alac"

.field public static final MIME_TYPE_AMR:Ljava/lang/String; = "audio/amr"

.field public static final MIME_TYPE_DSD:Ljava/lang/String; = "audio/dsd"

.field public static final MIME_TYPE_FLAC:Ljava/lang/String; = "audio/flac"

.field public static final MIME_TYPE_MIDI:Ljava/lang/String; = "audio/midi"

.field public static final MIME_TYPE_MPEG:Ljava/lang/String; = "audio/mpeg"

.field public static final MIME_TYPE_WAV:Ljava/lang/String; = "audio/wav"

.field public static final MIME_TYPE_XMID:Ljava/lang/String; = "audio/x-mid"

.field public static final MIME_TYPE_XMIDI:Ljava/lang/String; = "audio/x-midi"

.field public static final MIME_TYPE_XMUSIC_XMIDI:Ljava/lang/String; = "x-music/x-midi"

.field public static final MXMF_EXTENSION:Ljava/lang/String; = ".mxmf"

.field public static final NON_HIGH_RES_MIME_TYPES:[Ljava/lang/String;

.field public static final XMF_EXTENSION:Ljava/lang/String; = ".xmf"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x6

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio/midi"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "audio/x-mid"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "audio/x-midi"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "x-music/x-midi"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "audio/amr"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "audio/mpeg"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/music/common/AudioMimeTypes;->NON_HIGH_RES_MIME_TYPES:[Ljava/lang/String;

    .line 40
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "audio/dsd"

    aput-object v1, v0, v2

    const-string v1, "audio/wav"

    aput-object v1, v0, v3

    const-string v1, "audio/flac"

    aput-object v1, v0, v4

    const-string v1, "audio/alac"

    aput-object v1, v0, v5

    const-string v1, "audio/x-aiff"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/music/common/AudioMimeTypes;->CAN_BE_HIGH_RES_MIME_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
