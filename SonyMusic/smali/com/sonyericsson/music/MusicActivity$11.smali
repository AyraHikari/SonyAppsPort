.class Lcom/sonyericsson/music/MusicActivity$11;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity;->showSyncUserNoticeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$11;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 921
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$11;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/MusicActivity;->access$200(Lcom/sonyericsson/music/MusicActivity;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setShowSyncUserNoticeDialog(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 923
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
