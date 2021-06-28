.class Lcom/sonyericsson/music/ViewRequestController$MediaSearchHandler;
.super Lcom/sonyericsson/music/ViewRequestController$IntentHandler;
.source "ViewRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ViewRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaSearchHandler"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    return-void
.end method

.method private handleMediaSearch(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "query"

    .line 277
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.focus"

    .line 278
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.artist"

    .line 279
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.album"

    .line 280
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.title"

    .line 281
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_3

    const-string v4, "audio/"

    .line 283
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string p1, "vnd.android.cursor.item/album"

    .line 285
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v3, :cond_3

    if-eqz v2, :cond_1

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    const-string p1, "vnd.android.cursor.item/artist"

    .line 292
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    move-object v0, v2

    .line 298
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/MusicActivity;->openSearchResultFragment(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public runIntent()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ViewRequestController$MediaSearchHandler;->handleMediaSearch(Landroid/content/Intent;)V

    return-void
.end method
