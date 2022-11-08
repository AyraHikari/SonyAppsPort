.class public Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;
.super Ljava/lang/Object;
.source "RemoteViewsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetRemoteViewBuilder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemoteView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    .line 177
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0c007f

    invoke-direct {v0, p1, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    return-void
.end method

.method private static final isRtlText(Ljava/lang/String;)Z
    .locals 2

    .line 344
    new-instance v0, Ljava/text/Bidi;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 345
    invoke-virtual {v0}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public build()Landroid/widget/RemoteViews;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public setAlbumArt(Landroid/graphics/Bitmap;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;
    .locals 3

    const v0, 0x7f090235

    if-nez p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const-string v2, "setImageBitmap"

    invoke-virtual {v1, v0, v2, p1}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object p0
.end method

.method public setBufferingSpinnerState(Z)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const-string v1, "setEnabled"

    xor-int/lit8 v2, p1, 0x1

    const v3, 0x7f090246

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const v0, 0x7f09023f

    if-eqz p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    return-object p0
.end method

.method public setPlayStatus(Z)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090246

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f080208

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const p1, 0x7f10006b

    .line 230
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f08020e

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const p1, 0x7f10006c

    .line 234
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-object p0
.end method

.method public setSourceIcon(Landroid/graphics/Bitmap;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;
    .locals 4

    const v0, 0x7f090047

    const v1, 0x7f09023d

    if-nez p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 206
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const-string v3, "setImageBitmap"

    invoke-virtual {v2, v1, v3, p1}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 209
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 210
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    return-object p0
.end method

.method public setTrack(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;
    .locals 6

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-static {p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->isRtlText(Ljava/lang/String;)Z

    move-result v0

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f090239

    const v3, 0x7f090238

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 262
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 265
    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 266
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 268
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 272
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const v0, 0x7f090243

    const v1, 0x7f090244

    if-eqz p1, :cond_3

    .line 273
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 274
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4

    .line 276
    :cond_3
    invoke-static {p2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->isRtlText(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 277
    iget-object v2, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 278
    iget-object v2, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 279
    iget-object p2, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 281
    iget-object p2, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    const/16 v4, 0x8

    :cond_5
    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_4
    return-object p0
.end method

.method public setupIntents()Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;
    .locals 4

    .line 314
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "launch_player"

    const/4 v2, 0x1

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v3, 0x7f090237

    invoke-static {v1, v2, v3, v0}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->access$000(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f090241

    const/16 v3, 0x58

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->access$100(Landroid/content/Context;Landroid/widget/RemoteViews;II)V

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f090246

    const/16 v3, 0x55

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->access$100(Landroid/content/Context;Landroid/widget/RemoteViews;II)V

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f090240

    const/16 v3, 0x57

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->access$100(Landroid/content/Context;Landroid/widget/RemoteViews;II)V

    return-object p0
.end method
