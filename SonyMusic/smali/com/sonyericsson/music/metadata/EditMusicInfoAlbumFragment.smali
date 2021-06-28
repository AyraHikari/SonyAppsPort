.class public Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;
.super Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;
.source "EditMusicInfoAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$SaveAlbumInfoTask;,
        Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$FetchAlbumInfoTask;
    }
.end annotation


# static fields
.field private static final MULTIPLE_YEARS:Ljava/lang/String; = "MULTIPLE_YEARS"


# instance fields
.field private mHeaderAlbumTextView:Landroid/widget/TextView;

.field private final mTarget:Lcom/squareup/picasso/Target;

.field private mVariousYearsString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$1;-><init>(Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;->mTarget:Lcom/squareup/picasso/Target;

    return-void
.end method

.method static newInstance(J)Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;
    .locals 2

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    .line 69
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 70
    new-instance p0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;

    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;-><init>()V

    .line 71
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected createReturnIntent(Lcom/sonyericsson/music/metadata/EditMusicInfo;)Landroid/content/Intent;
    .locals 5

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 156
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "id"

    .line 157
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "art_uri"

    .line 158
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "name"

    .line 159
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected getAlbumImageView()Landroid/widget/ImageView;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderArtImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getFetchInfoTask(Landroid/app/Activity;Ljava/lang/String;J)Lcom/sonyericsson/music/metadata/FetchInfoTask;
    .locals 1

    .line 112
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$FetchAlbumInfoTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$FetchAlbumInfoTask;-><init>(Landroid/app/Activity;Ljava/lang/String;J)V

    return-object v0
.end method

.method protected getHeaderImageClickListener()Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mImageClickListener:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

    sget-object v1, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;-><init>(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mImageClickListener:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mImageClickListener:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;

    return-object v0
.end method

.method protected getInsufficientImageSaveInformationMessage(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)I
    .locals 0

    const p1, 0x7f1000e4

    return p1
.end method

.method protected getSaveErrorToastMessage()I
    .locals 1

    const v0, 0x7f1000f2

    return v0
.end method

.method protected getSaveInfoTask(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)Lcom/sonyericsson/music/metadata/SaveInfoTask;
    .locals 7

    .line 118
    new-instance v6, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$SaveAlbumInfoTask;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$SaveAlbumInfoTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)V

    return-object v6
.end method

.method protected hasFieldsChanged()Z
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mAlbum:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    iget-object v4, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 213
    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 214
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    return v3

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mYear:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getYear()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MULTIPLE_YEARS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return v3

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->hasChanged()Z

    move-result v0

    return v0
.end method

.method protected hasImageData(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)Z
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mAlbum:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected isAlbumImageModifiable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0038

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e3

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;->mVariousYearsString:Ljava/lang/String;

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected saveChanges()V
    .locals 3

    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;->hasFieldsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mAlbum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    const v1, 0x7f100086

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    return-void

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->saveChanges()V

    return-void
.end method

.method protected setValues(Landroid/content/Context;Z)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f10008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;->mHeaderAlbumTextView:Landroid/widget/TextView;

    const v1, 0x7f10008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    if-nez p2, :cond_2

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mAlbum:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setIfEmpty(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getYear()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "MULTIPLE_YEARS"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mYear:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;->mVariousYearsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mYear:Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setIfEmpty(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 191
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumArt()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumArt()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;->mTarget:Lcom/squareup/picasso/Target;

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/PicassoUtils;->loadBitmapNoStore(Landroid/content/Context;Ljava/io/File;Lcom/squareup/picasso/Target;)V

    goto :goto_1

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setDefaultAlbumArt()V

    .line 197
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setValues(Landroid/content/Context;Z)V

    return-void
.end method

.method protected setupView(Landroid/content/Context;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setupView(Landroid/content/Context;)V

    .line 88
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f09009f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;->mHeaderAlbumTextView:Landroid/widget/TextView;

    .line 89
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mAlbum:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mAlbum:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 91
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;->mHeaderAlbumTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900ab

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mYear:Landroid/widget/EditText;

    .line 93
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mYear:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900ac

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateAndValidateFields()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mAlbum:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 136
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumChanged(Z)V

    .line 139
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbum(Ljava/lang/String;)V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mYear:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setYearChanged(Z)V

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setYear(Ljava/lang/String;)V

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isAlbumArtChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->resetMiniPlayer()V

    :cond_3
    return-void
.end method

.method protected verifyArtRelatedInfoExists(Landroid/content/Context;)Z
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isAlbumArtChanged()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;->hasImageData(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;->getInsufficientImageSaveInformationMessage(Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method
