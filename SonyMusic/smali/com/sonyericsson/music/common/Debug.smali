.class public final Lcom/sonyericsson/music/common/Debug;
.super Lcom/sonymobile/music/debug/DebugBase;
.source "Debug.java"


# static fields
.field public static final DEBUG:Lcom/sonyericsson/music/common/Debug;

.field public static final DOLOGGING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/sonyericsson/music/common/Debug;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/Debug;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "SemcMusicPlayer"

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
