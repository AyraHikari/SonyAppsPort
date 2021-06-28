.class Lcom/sonyericsson/music/MiniPlayerFragment$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiniPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MiniPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MiniPlayerFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/MiniPlayerFragment;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$ScreenReceiver;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/MiniPlayerFragment;Lcom/sonyericsson/music/MiniPlayerFragment$1;)V
    .locals 0

    .line 783
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment$ScreenReceiver;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 786
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 787
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 788
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$ScreenReceiver;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$402(Lcom/sonyericsson/music/MiniPlayerFragment;Z)Z

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 789
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 790
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$ScreenReceiver;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$402(Lcom/sonyericsson/music/MiniPlayerFragment;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
