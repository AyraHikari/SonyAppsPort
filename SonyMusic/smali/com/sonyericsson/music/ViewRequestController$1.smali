.class Lcom/sonyericsson/music/ViewRequestController$1;
.super Ljava/lang/Object;
.source "ViewRequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/ViewRequestController;->showFailedToast(Lcom/sonyericsson/music/MusicActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/sonyericsson/music/MusicActivity;

.field final synthetic val$stringResId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;I)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$1;->val$activity:Lcom/sonyericsson/music/MusicActivity;

    iput p2, p0, Lcom/sonyericsson/music/ViewRequestController$1;->val$stringResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$1;->val$activity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/ViewRequestController$1;->val$stringResId:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    return-void
.end method
