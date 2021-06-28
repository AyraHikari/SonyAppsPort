.class public Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;
.super Ljava/lang/Object;
.source "CustomHeadsetHookHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;,
        Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;,
        Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_CLICK_MAX_TIME:I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHeadsetHookTask:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;

.field private mListener:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;

.field private mNbrHeadsetHookReceived:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->DOUBLE_CLICK_MAX_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mNbrHeadsetHookReceived:I

    .line 34
    new-instance v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;-><init>(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mHeadsetHookTask:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object v1, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mListener:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;)Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mListener:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mNbrHeadsetHookReceived:I

    return p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mNbrHeadsetHookReceived:I

    return p1
.end method

.method private scheduleHeadsetHookTimeout()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mHeadsetHookTask:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mHeadsetHookTask:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;

    sget v2, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->DOUBLE_CLICK_MAX_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public handleHeadsetHook()V
    .locals 2

    .line 53
    iget v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mNbrHeadsetHookReceived:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mListener:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;

    if-eqz v0, :cond_0

    .line 69
    sget-object v1, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->TRIPLE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;->onHeadsetHookPattern(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;)V

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 61
    iput v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mNbrHeadsetHookReceived:I

    .line 63
    invoke-direct {p0}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->scheduleHeadsetHookTimeout()V

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 55
    iput v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mNbrHeadsetHookReceived:I

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->scheduleHeadsetHookTimeout()V

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mNbrHeadsetHookReceived:I

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mHeadsetHookTask:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mHeadsetHookTask:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mListener:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;

    return-void
.end method

.method public setListener(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->mListener:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;

    return-void
.end method
