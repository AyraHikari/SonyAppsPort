.class final Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaRouteCastDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteCastDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V
    .locals 0

    .line 805
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 818
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 819
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateArtIconIfNeeded()V

    .line 820
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteCastDialog;->update()V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 810
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_0

    .line 811
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 812
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    return-void
.end method
