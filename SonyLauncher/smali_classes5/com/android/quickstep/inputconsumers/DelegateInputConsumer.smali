.class public abstract Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;
.super Ljava/lang/Object;
.source "DelegateInputConsumer.java"

# interfaces
.implements Lcom/android/quickstep/InputConsumer;


# static fields
.field protected static final STATE_ACTIVE:I = 0x1

.field protected static final STATE_DELEGATE_ACTIVE:I = 0x2

.field protected static final STATE_INACTIVE:I


# instance fields
.field protected final mDelegate:Lcom/android/quickstep/InputConsumer;

.field protected final mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field protected mState:I


# direct methods
.method public constructor <init>(Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V
    .locals 1
    .param p1, "delegate"    # Lcom/android/quickstep/InputConsumer;
    .param p2, "inputMonitor"    # Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    .line 24
    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    .line 26
    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->allowInterceptByParent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getActiveConsumerInHierarchy()Lcom/android/quickstep/InputConsumer;
    .locals 2

    .line 30
    iget v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 31
    return-object p0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getActiveConsumerInHierarchy()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    return-object v0
.end method

.method public onConsumerAboutToBeSwitched()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->onConsumerAboutToBeSwitched()V

    .line 44
    return-void
.end method

.method protected setActive(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    .line 48
    const-string v0, "Pilfer"

    const-string v1, "pilferPointers"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    .line 52
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 53
    .local v0, "event":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 54
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v1, v0}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 55
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 56
    return-void
.end method

.method public writeToProtoInternal(Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)V
    .locals 1
    .param p1, "inputConsumerProto"    # Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    .line 60
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0, p1}, Lcom/android/quickstep/InputConsumer;->writeToProtoInternal(Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)V

    .line 61
    return-void
.end method
