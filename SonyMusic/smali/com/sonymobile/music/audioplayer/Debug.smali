.class final Lcom/sonymobile/music/audioplayer/Debug;
.super Lcom/sonymobile/music/debug/DebugBase;
.source "Debug.java"


# static fields
.field public static DEBUG:Lcom/sonymobile/music/audioplayer/Debug; = null

.field public static final DOLOGGING:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AudioPlayer"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/sonymobile/music/audioplayer/Debug;

    invoke-direct {v0}, Lcom/sonymobile/music/audioplayer/Debug;-><init>()V

    sput-object v0, Lcom/sonymobile/music/audioplayer/Debug;->DEBUG:Lcom/sonymobile/music/audioplayer/Debug;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "AudioPlayer"

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
