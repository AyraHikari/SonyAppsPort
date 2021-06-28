.class Lcom/sonyericsson/music/MusicActivity$12;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity;->showToastOnUiThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicActivity;

.field final synthetic val$duration:I

.field final synthetic val$rescId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;II)V
    .locals 0

    .line 1606
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$12;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iput p2, p0, Lcom/sonyericsson/music/MusicActivity$12;->val$rescId:I

    iput p3, p0, Lcom/sonyericsson/music/MusicActivity$12;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1609
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$12;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->access$900(Lcom/sonyericsson/music/MusicActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$12;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->access$900(Lcom/sonyericsson/music/MusicActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1613
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$12;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/music/MusicActivity$12;->val$rescId:I

    iget v3, p0, Lcom/sonyericsson/music/MusicActivity$12;->val$duration:I

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/common/MusicToast;->create(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->access$902(Lcom/sonyericsson/music/MusicActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1614
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$12;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->access$900(Lcom/sonyericsson/music/MusicActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
