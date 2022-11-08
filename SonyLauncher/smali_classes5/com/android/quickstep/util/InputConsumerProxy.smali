.class public Lcom/android/quickstep/util/InputConsumerProxy;
.super Ljava/lang/Object;
.source "InputConsumerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputConsumerProxy"


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mConsumerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/quickstep/InputConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyPending:Z

.field private mDestroyed:Z

.field private mInputConsumer:Lcom/android/quickstep/InputConsumer;

.field private final mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

.field private final mRotationSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchInProgress:Z


# direct methods
.method public static synthetic $r8$lambda$z5yelbUnQpmGODOBE0q6BAHU3z0(Lcom/android/quickstep/util/InputConsumerProxy;Landroid/view/InputEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/InputConsumerProxy;->onInputConsumerEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/systemui/shared/system/InputConsumerController;Ljava/lang/Runnable;Ljava/util/function/Supplier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "inputConsumerController"    # Lcom/android/systemui/shared/system/InputConsumerController;
    .param p4, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/shared/system/InputConsumerController;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/quickstep/InputConsumer;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p2, "rotationSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local p5, "consumerSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/quickstep/InputConsumer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyed:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTouchInProgress:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyPending:Z

    .line 58
    iput-object p1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mRotationSupplier:Ljava/util/function/Supplier;

    .line 60
    iput-object p3, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    .line 61
    iput-object p4, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mCallback:Ljava/lang/Runnable;

    .line 62
    iput-object p5, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mConsumerSupplier:Ljava/util/function/Supplier;

    .line 63
    return-void
.end method

.method private initInputConsumerIfNeeded()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mConsumerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mConsumerSupplier:Ljava/util/function/Supplier;

    .line 156
    :cond_1
    return-void
.end method

.method private onInputConsumerEvent(Landroid/view/InputEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/InputEvent;

    .line 73
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 74
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 75
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 76
    .local v3, "action":I
    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 79
    .local v1, "isHoverEvent":Z
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 80
    invoke-direct {p0, v0}, Lcom/android/quickstep/util/InputConsumerProxy;->onInputConsumerHoverEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 82
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/quickstep/util/InputConsumerProxy;->onInputConsumerMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 84
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "isHoverEvent":Z
    .end local v3    # "action":I
    :cond_3
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_4

    .line 85
    invoke-direct {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->initInputConsumerIfNeeded()V

    .line 86
    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    invoke-interface {v0, v2}, Lcom/android/quickstep/InputConsumer;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 87
    return v1

    .line 84
    :cond_4
    :goto_1
    nop

    .line 89
    return v2
.end method

.method private onInputConsumerHoverEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 126
    invoke-direct {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->initInputConsumerIfNeeded()V

    .line 127
    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;

    iget-object v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mRotationSupplier:Ljava/util/function/Supplier;

    .line 129
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 128
    invoke-virtual {v0, p1, v1}, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->transform(Landroid/view/MotionEvent;I)V

    .line 130
    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0, p1}, Lcom/android/quickstep/InputConsumer;->onHoverEvent(Landroid/view/MotionEvent;)V

    .line 132
    :cond_0
    return-void
.end method

.method private onInputConsumerMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 97
    .local v0, "action":I
    iget-boolean v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTouchInProgress:Z

    const-string v2, "InputConsumerProxy"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received non-down motion before down motion: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v3

    .line 101
    :cond_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 102
    const-string v1, "Received down motion while touch was already in progress"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v3

    .line 106
    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 107
    iput-boolean v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTouchInProgress:Z

    .line 108
    invoke-direct {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->initInputConsumerIfNeeded()V

    goto :goto_0

    .line 109
    :cond_2
    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    .line 111
    :cond_3
    iput-boolean v3, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTouchInProgress:Z

    .line 112
    iget-boolean v2, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyPending:Z

    if-eqz v2, :cond_4

    .line 113
    invoke-virtual {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    .line 116
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v2, :cond_5

    .line 117
    sget-object v2, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/SimpleOrientationTouchTransformer;

    iget-object v3, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mRotationSupplier:Ljava/util/function/Supplier;

    .line 118
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 117
    invoke-virtual {v2, p1, v3}, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->transform(Landroid/view/MotionEvent;I)V

    .line 119
    iget-object v2, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v2, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 122
    :cond_5
    return v1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTouchInProgress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 136
    iput-boolean v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyPending:Z

    .line 137
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyPending:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyed:Z

    .line 141
    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/InputConsumerController;->setInputListener(Lcom/android/systemui/shared/system/InputConsumerController$InputListener;)V

    .line 142
    return-void
.end method

.method public enable()V
    .locals 2

    .line 66
    iget-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    new-instance v1, Lcom/android/quickstep/util/InputConsumerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/InputConsumerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/InputConsumerProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/InputConsumerController;->setInputListener(Lcom/android/systemui/shared/system/InputConsumerController$InputListener;)V

    .line 70
    return-void
.end method

.method public unregisterCallback()V
    .locals 1

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mCallback:Ljava/lang/Runnable;

    .line 146
    return-void
.end method
