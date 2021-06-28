.class public final Lcom/sonymobile/music/common/Debug;
.super Lcom/sonymobile/music/debug/DebugBase;
.source "Debug.java"


# static fields
.field public static final DEBUG:Lcom/sonymobile/music/common/Debug;

.field public static final DOLOGGING:Z

.field public static final LOG_TAG:Ljava/lang/String; = "MusicCommonLib"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/sonymobile/music/common/Debug;->DOLOGGING:Z

    .line 25
    new-instance v0, Lcom/sonymobile/music/common/Debug;

    invoke-direct {v0}, Lcom/sonymobile/music/common/Debug;-><init>()V

    sput-object v0, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "MusicCommonLib"

    .line 28
    sget-boolean v1, Lcom/sonymobile/music/common/Debug;->DOLOGGING:Z

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
