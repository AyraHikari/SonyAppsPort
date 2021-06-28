.class Lcom/sonyericsson/music/proxyservice/worker/Worker$1$1;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/proxyservice/worker/Worker$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/worker/Worker$1;Landroid/content/Intent;)V
    .locals 0

    .line 1507
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1$1;->this$1:Lcom/sonyericsson/music/proxyservice/worker/Worker$1;

    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1510
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1$1;->this$1:Lcom/sonyericsson/music/proxyservice/worker/Worker$1;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->access$000(Lcom/sonyericsson/music/proxyservice/worker/Worker$1;Landroid/content/Intent;)V

    return-void
.end method
