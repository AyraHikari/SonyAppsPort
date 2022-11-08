.class public Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;
.super Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;
.source "EditMusicInfoArtistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment$SaveArtistInfoTask;,
        Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment$GetArtistInfoTask;
    }
.end annotation


# instance fields
.field private mHeaderArtistTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;-><init>()V

    return-void
.end method

.method static newInstance(J)Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;
    .locals 2

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    .line 40
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    new-instance p0, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;

    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;-><init>()V

    .line 42
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected createReturnIntent(Lcom/sonyericsson/music/metadata/EditMusicInfo;)Landroid/content/Intent;
    .locals 5

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "id"

    .line 99
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "art_uri"

    .line 100
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "name"

    .line 101
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected getFetchInfoTask(Landroid/app/Activity;Ljava/lang/String;J)Lcom/sonyericsson/music/metadata/FetchInfoTask;
    .locals 1

    .line 64
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment$GetArtistInfoTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment$GetArtistInfoTask;-><init>(Landroid/app/Activity;Ljava/lang/String;J)V

    return-object v0
.end method

.method protected getInsufficientImageSaveInformationMessage(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)I
    .locals 0

    const p1, 0x7f1000e5

    return p1
.end method

.method protected getSaveErrorToastMessage()I
    .locals 1

    const v0, 0x7f1000f3

    return v0
.end method

.method protected getSaveInfoTask(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)Lcom/sonyericsson/music/metadata/SaveInfoTask;
    .locals 7

    .line 70
    new-instance v6, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment$SaveArtistInfoTask;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment$SaveArtistInfoTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)V

    return-object v6
.end method

.method protected hasFieldsChanged()Z
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mArtist:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 159
    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 160
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 161
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->hasChanged()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected hasImageData(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)Z
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mArtist:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0038

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected saveChanges()V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;->hasFieldsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mArtist:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    const v1, 0x7f100087

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    return-void

    .line 80
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->saveChanges()V

    return-void
.end method

.method protected setValues(Landroid/content/Context;Z)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f10008d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;->mHeaderArtistTextView:Landroid/widget/TextView;

    const v1, 0x7f10008e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    if-nez p2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 120
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mArtist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 122
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setIfEmpty(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistArt()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 127
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistArt()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderArtImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment$1;-><init>(Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;Landroid/content/Context;)V

    invoke-static {p1, v0, v1, v2}, Lcom/sonyericsson/music/common/PicassoUtils;->loadBitmapNoStore(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_1

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f10009d

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderArtImageView:Landroid/widget/ImageView;

    .line 147
    invoke-static {p1, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getDefaultArtistArt(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setValues(Landroid/content/Context;Z)V

    return-void
.end method

.method protected setupView(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setupView(Landroid/content/Context;)V

    .line 57
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f0900a1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;->mHeaderArtistTextView:Landroid/widget/TextView;

    .line 58
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mArtist:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;->mHeaderArtistTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected updateAndValidateFields()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mArtist:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 88
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtistChanged(Z)V

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtist(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected verifyArtRelatedInfoExists(Landroid/content/Context;)Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isArtistArtChanged()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ARTIST:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;->hasImageData(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ARTIST:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;->getInsufficientImageSaveInformationMessage(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method
