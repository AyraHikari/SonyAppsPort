.class public final Lcom/android/launcher3/testing/TestLogging;
.super Ljava/lang/Object;
.source "TestLogging.java"


# static fields
.field private static sEventConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sHadEventsNotFromTest:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "sequence"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;

    .line 41
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestLogging;->recordEventSlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "sequence"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/Object;

    .line 47
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/testing/TestLogging;->recordEventSlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method private static recordEventSlow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "sequence"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaplEvents"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object v0, Lcom/android/launcher3/testing/TestLogging;->sEventConsumer:Ljava/util/function/BiConsumer;

    .line 35
    .local v0, "eventConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    :cond_0
    return-void
.end method

.method public static recordKeyEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 2
    .param p0, "sequence"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 60
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/testing/TestLogging;->recordEventSlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p2}, Lcom/android/launcher3/testing/TestLogging;->registerEventNotFromTest(Landroid/view/InputEvent;)V

    .line 64
    :cond_0
    return-void
.end method

.method public static recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 2
    .param p0, "sequence"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 67
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/testing/TestLogging;->recordEventSlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p2}, Lcom/android/launcher3/testing/TestLogging;->registerEventNotFromTest(Landroid/view/InputEvent;)V

    .line 71
    :cond_0
    return-void
.end method

.method private static registerEventNotFromTest(Landroid/view/InputEvent;)V
    .locals 2
    .param p0, "event"    # Landroid/view/InputEvent;

    .line 53
    sget-boolean v0, Lcom/android/launcher3/testing/TestLogging;->sHadEventsNotFromTest:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/testing/TestLogging;->sHadEventsNotFromTest:Z

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "First event not from test: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaplTarget"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method static setEventConsumer(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p0, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p0, Lcom/android/launcher3/testing/TestLogging;->sEventConsumer:Ljava/util/function/BiConsumer;

    .line 75
    return-void
.end method
