.class Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$1;
.super Ljava/lang/Object;
.source "ViewRequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->runIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    iget-object v1, v0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->access$200(Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->access$300(Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;Landroid/content/Intent;Z)V

    return-void
.end method
