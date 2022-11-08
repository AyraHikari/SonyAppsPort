.class public Lcom/sonyericsson/music/debug/DebugTimer;
.super Ljava/lang/Object;
.source "DebugTimer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MUSIC_TIMER"

.field private static final sIsEnabled:Z

.field private static final sMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Lcom/sonyericsson/music/common/FeatureEnabler;->isStartupTimerEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/music/debug/DebugTimer;->sIsEnabled:Z

    .line 33
    sget-boolean v0, Lcom/sonyericsson/music/debug/DebugTimer;->sIsEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sonyericsson/music/debug/DebugTimer$1;

    invoke-direct {v0}, Lcom/sonyericsson/music/debug/DebugTimer$1;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    sput-object v0, Lcom/sonyericsson/music/debug/DebugTimer;->sMap:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static endInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 93
    sget-boolean v2, Lcom/sonyericsson/music/debug/DebugTimer;->sIsEnabled:Z

    if-nez v2, :cond_0

    const-string p0, ""

    return-object p0

    .line 96
    :cond_0
    sget-object v2, Lcom/sonyericsson/music/debug/DebugTimer;->sMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static print(Ljava/lang/String;)V
    .locals 1

    .line 85
    sget-boolean v0, Lcom/sonyericsson/music/debug/DebugTimer;->sIsEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "MUSIC_TIMER"

    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .locals 3

    .line 48
    sget-boolean v0, Lcom/sonyericsson/music/debug/DebugTimer;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/sonyericsson/music/debug/DebugTimer;->sMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static stop(Ljava/lang/String;)V
    .locals 1

    .line 58
    sget-boolean v0, Lcom/sonyericsson/music/debug/DebugTimer;->sIsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    invoke-static {p0, v0}, Lcom/sonyericsson/music/debug/DebugTimer;->stopWithToast(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static stopWithToast(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 69
    sget-boolean v0, Lcom/sonyericsson/music/debug/DebugTimer;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p0}, Lcom/sonyericsson/music/debug/DebugTimer;->endInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/sonyericsson/music/debug/DebugTimer;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 74
    invoke-static {p1, p0, v0}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method
