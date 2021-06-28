.class public Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;
.super Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;
.source "EditMusicInfoTrackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$SaveTrackInfoTask;,
        Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$GetTrackInfoTask;
    }
.end annotation


# instance fields
.field private final mAlbumImageTarget:Lcom/squareup/picasso/Target;

.field private mCurrentAlbumName:Landroid/widget/TextView;

.field private mCurrentArtistName:Landroid/widget/TextView;

.field private mCurrentSongNumber:Landroid/widget/TextView;

.field private mCurrentTrackName:Landroid/widget/TextView;

.field private mCurrentYear:Landroid/widget/TextView;

.field private mDiscNbr:Landroid/widget/EditText;

.field private mGenre:Landroid/widget/EditText;

.field private mGenreView:Landroid/view/View;

.field private mTrack:Landroid/widget/EditText;

.field private mTrackNbr:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$1;-><init>(Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mAlbumImageTarget:Lcom/squareup/picasso/Target;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->replaceUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static newInstance(J)Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;
    .locals 2

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    .line 84
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 85
    new-instance p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;

    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;-><init>()V

    .line 86
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private static replaceUnknown(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<unknown>"

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    return-object p0
.end method

.method private updateFixedTexts(Landroid/content/Context;)V
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mCurrentTrackName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mCurrentArtistName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f10009d

    .line 233
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 234
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mCurrentAlbumName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f10009c

    .line 236
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 237
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mCurrentYear:Landroid/widget/TextView;

    const v1, 0x7f10009f

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 239
    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getYear()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTrackNbr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mCurrentSongNumber:Landroid/widget/TextView;

    const v1, 0x7f10009b

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 243
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTrackNbr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 242
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createReturnIntent(Lcom/sonyericsson/music/metadata/EditMusicInfo;)Landroid/content/Intent;
    .locals 5

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "id"

    .line 225
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "art_uri"

    .line 226
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method protected getAlbumImageView()Landroid/widget/ImageView;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAlbumArtImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getFetchInfoTask(Landroid/app/Activity;Ljava/lang/String;J)Lcom/sonyericsson/music/metadata/FetchInfoTask;
    .locals 1

    .line 130
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$GetTrackInfoTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$GetTrackInfoTask;-><init>(Landroid/app/Activity;Ljava/lang/String;J)V

    return-object v0
.end method

.method protected getInsufficientImageSaveInformationMessage(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)I
    .locals 1

    .line 254
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$3;->$SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoUtils$ImageType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    :pswitch_0
    const p1, 0x7f1000e5

    return p1

    :pswitch_1
    const p1, 0x7f1000e4

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getSaveErrorToastMessage()I
    .locals 1

    const v0, 0x7f1000f4

    return v0
.end method

.method protected getSaveInfoTask(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)Lcom/sonyericsson/music/metadata/SaveInfoTask;
    .locals 7

    .line 136
    new-instance v6, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$SaveTrackInfoTask;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$SaveTrackInfoTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)V

    return-object v6
.end method

.method protected hasFieldsChanged()Z
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mTrack:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 368
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mArtist:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 372
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 373
    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 374
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 375
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    return v2

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mAlbum:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 380
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 381
    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 382
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 383
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez v3, :cond_5

    return v2

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mTrackNbr:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 388
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTrackNbr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 391
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mDiscNbr:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 392
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getDiscNbr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 395
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mYear:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 396
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getYear()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    .line 399
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mGenre:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 400
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getGenres()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 401
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getGenres()[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    .line 405
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->hasChanged()Z

    move-result v0

    return v0
.end method

.method protected hasImageData(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)Z
    .locals 2

    .line 265
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$3;->$SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoUtils$ImageType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 270
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistArt()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 268
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumArt()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c003a

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    .line 94
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->removeLoadingDialog()V

    return-void
.end method

.method protected saveChanges()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mTrack:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    const v1, 0x7f100088

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    return-void

    .line 153
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->saveChanges()V

    return-void
.end method

.method protected setValues(Landroid/content/Context;Z)V
    .locals 3

    .line 303
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->updateFixedTexts(Landroid/content/Context;)V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumArt()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumArt()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mAlbumImageTarget:Lcom/squareup/picasso/Target;

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/PicassoUtils;->loadBitmapNoStore(Landroid/content/Context;Ljava/io/File;Lcom/squareup/picasso/Target;)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setDefaultAlbumArt()V

    .line 309
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->disposeEmbeddedArt()V

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f100090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    if-nez p2, :cond_3

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mTrack:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setIfEmpty(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mTrackNbr:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTrackNbr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setIfEmpty(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mDiscNbr:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getDiscNbr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setIfEmpty(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mYear:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setIfEmpty(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getGenres()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mGenre:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getGenres()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setIfEmpty(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mAlbum:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 323
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {p1, v1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setIfEmpty(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mArtist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 327
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-static {p1, v1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setIfEmpty(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistArt()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 333
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistArt()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderArtImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$2;-><init>(Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;Landroid/content/Context;)V

    invoke-static {p1, v0, v1, v2}, Lcom/sonyericsson/music/common/PicassoUtils;->loadBitmapNoStore(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_2

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f10009d

    .line 349
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 350
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderArtImageView:Landroid/widget/ImageView;

    .line 351
    invoke-static {p1, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getDefaultArtistArt(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setValues(Landroid/content/Context;Z)V

    return-void
.end method

.method protected setValuesAndInitiate(Landroid/content/Context;Lcom/sonyericsson/music/metadata/EditMusicInfo;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 297
    iput-object p3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mTempEmbeddedAlbumArt:Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    .line 298
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setValuesAndInitiate(Landroid/content/Context;Lcom/sonyericsson/music/metadata/EditMusicInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected setupView(Landroid/content/Context;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900e1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAlbumArtImageView:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mCurrentTrackName:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900e3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mCurrentArtistName:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mCurrentAlbumName:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900e8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mCurrentSongNumber:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900e9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mCurrentYear:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mTrack:Landroid/widget/EditText;

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mYear:Landroid/widget/EditText;

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mTrackNbr:Landroid/widget/EditText;

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mDiscNbr:Landroid/widget/EditText;

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mGenreView:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mGenre:Landroid/widget/EditText;

    .line 118
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->isCropAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mCurrentAlbumArtImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

    sget-object v2, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;-><init>(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mGenreView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-super {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setupView(Landroid/content/Context;)V

    return-void
.end method

.method protected updateAndValidateFields()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mTrack:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 159
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setTitleChanged(Z)V

    .line 161
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setTitle(Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mArtist:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 166
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtistChanged(Z)V

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtist(Ljava/lang/String;)V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    const-string v2, "<unknown>"

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtist(Ljava/lang/String;)V

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mAlbum:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 176
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v2, :cond_5

    .line 178
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumChanged(Z)V

    .line 179
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbum(Ljava/lang/String;)V

    .line 181
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    const-string v2, "<unknown>"

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbum(Ljava/lang/String;)V

    .line 187
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mTrackNbr:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 188
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTrackNbr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 189
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setTrackNbrChanged(Z)V

    .line 190
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setTrackNbr(Ljava/lang/String;)V

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mDiscNbr:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 193
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getDiscNbr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 194
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setDiscNbrChanged(Z)V

    .line 195
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setDiscNbr(Ljava/lang/String;)V

    .line 197
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mYear:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 198
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getYear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 199
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setYearChanged(Z)V

    .line 200
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setYear(Ljava/lang/String;)V

    .line 202
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isAlbumArtChanged()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->resetMiniPlayer()V

    .line 205
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->mGenre:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 206
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getGenres()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 207
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getGenres()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 208
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    new-array v4, v1, [Ljava/lang/String;

    aput-object v0, v4, v3

    invoke-virtual {v2, v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setGenres([Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setGenresChanged(Z)V

    :cond_b
    return-void
.end method

.method protected verifyArtRelatedInfoExists(Landroid/content/Context;)Z
    .locals 3

    .line 278
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ARTIST:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->hasImageData(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 279
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ARTIST:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->getInsufficientImageSaveInformationMessage(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)I

    move-result v0

    invoke-static {p1, v0, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    return v1

    .line 285
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->hasImageData(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 286
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 287
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->getInsufficientImageSaveInformationMessage(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)I

    move-result v0

    invoke-static {p1, v0, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    return v1

    :cond_1
    return v2
.end method
