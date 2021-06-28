.class Lcom/sonyericsson/music/fullplayer/SeekHandler$1;
.super Ljava/lang/Object;
.source "SeekHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/fullplayer/SeekHandler;->show(Landroid/widget/TextView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/fullplayer/SeekHandler;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/fullplayer/SeekHandler;Landroid/widget/TextView;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler$1;->this$0:Lcom/sonyericsson/music/fullplayer/SeekHandler;

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler$1;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler$1;->val$view:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
