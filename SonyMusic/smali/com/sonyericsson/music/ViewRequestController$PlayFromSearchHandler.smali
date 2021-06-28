.class Lcom/sonyericsson/music/ViewRequestController$PlayFromSearchHandler;
.super Lcom/sonyericsson/music/ViewRequestController$IntentHandler;
.source "ViewRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ViewRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayFromSearchHandler"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public runIntent()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    iget-object v1, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    iget-object v1, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->playFirstMatchingMusicItem(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
