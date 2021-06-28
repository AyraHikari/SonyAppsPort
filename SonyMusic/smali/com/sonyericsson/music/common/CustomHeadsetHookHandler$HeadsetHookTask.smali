.class Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;
.super Ljava/lang/Object;
.source "CustomHeadsetHookHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetHookTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;->this$0:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$1;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;-><init>(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;->this$0:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-static {v0}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->access$100(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;)Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;->this$0:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-static {v0}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->access$200(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;->this$0:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-static {v0}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->access$100(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;)Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->DOUBLE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;->onHeadsetHookPattern(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;->this$0:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-static {v0}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->access$100(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;)Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->SINGLE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;->onHeadsetHookPattern(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;)V

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookTask;->this$0:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->access$202(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;I)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
