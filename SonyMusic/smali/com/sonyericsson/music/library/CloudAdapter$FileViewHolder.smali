.class Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CloudAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/CloudAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileViewHolder"
.end annotation


# instance fields
.field private mClickListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/library/CloudAdapter$ClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadDrawable:Landroid/graphics/drawable/Drawable;

.field private final mFailedDrawable:Landroid/graphics/drawable/Drawable;

.field private final mFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private final mImageIndicator:Landroid/widget/ImageView;

.field private mImageView:Landroid/widget/ImageView;

.field private final mIndicator:Landroid/view/View;

.field private final mMimeTypeFolder:Ljava/lang/String;

.field private final mOnDownloadClickListener:Landroid/view/View$OnClickListener;

.field private final mOnTrackClickListener:Landroid/view/View$OnClickListener;

.field private final mPaddingEnd:Landroid/view/View;

.field private final mPaddingStart:Landroid/view/View;

.field private final mPendingDrawable:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private final mProgressBarColor:I

.field private mText1:Landroid/widget/TextView;

.field private mText2:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/sonyericsson/music/library/CloudAdapter$ClickListener;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 220
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 197
    new-instance v0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder$1;-><init>(Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mOnTrackClickListener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder$2;-><init>(Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mOnDownloadClickListener:Landroid/view/View$OnClickListener;

    .line 222
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mClickListenerRef:Ljava/lang/ref/WeakReference;

    .line 223
    iput-object p3, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mMimeTypeFolder:Ljava/lang/String;

    .line 224
    iput-object p4, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mDownloadDrawable:Landroid/graphics/drawable/Drawable;

    .line 225
    iput-object p5, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mPendingDrawable:Landroid/graphics/drawable/Drawable;

    .line 226
    iput-object p6, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mFailedDrawable:Landroid/graphics/drawable/Drawable;

    .line 227
    iput-object p7, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 228
    iput p8, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mProgressBarColor:I

    const p2, 0x7f0901fc

    .line 230
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mText1:Landroid/widget/TextView;

    const p2, 0x7f0901fd

    .line 231
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mText2:Landroid/widget/TextView;

    const p2, 0x7f0900db

    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageView:Landroid/widget/ImageView;

    const p2, 0x7f090196

    .line 233
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 234
    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget p3, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mProgressBarColor:I

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const p2, 0x7f090098

    .line 236
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageIndicator:Landroid/widget/ImageView;

    const p2, 0x7f0900dd

    .line 238
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mIndicator:Landroid/view/View;

    const p2, 0x7f090079

    .line 239
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0901d9

    .line 241
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mPaddingStart:Landroid/view/View;

    const p3, 0x7f0901d8

    .line 242
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mPaddingEnd:Landroid/view/View;

    .line 244
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mOnTrackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageIndicator:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mOnDownloadClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mClickListenerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;)I
    .locals 0

    .line 163
    iget p0, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mPosition:I

    return p0
.end method


# virtual methods
.method bindViewHolder(Landroid/database/Cursor;I)V
    .locals 4

    .line 249
    iput p2, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mPosition:I

    .line 250
    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mMimeTypeFolder:Ljava/lang/String;

    const-string v0, "mime_type"

    .line 251
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "title"

    .line 254
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "file_name"

    .line 256
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mText1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "artist"

    .line 261
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p2, :cond_2

    .line 262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mText2:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v3, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mText2:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 263
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "download_state"

    .line 271
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 276
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mFailedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 295
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 291
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 286
    :pswitch_3
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 287
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mPendingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 281
    :pswitch_4
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 282
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mDownloadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    :goto_3
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mIndicator:Landroid/view/View;

    if-eqz p2, :cond_4

    const/16 v0, 0x8

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mPaddingStart:Landroid/view/View;

    const/4 v0, 0x4

    if-eqz p2, :cond_5

    const/16 p2, 0x8

    goto :goto_5

    :cond_5
    const/4 p2, 0x4

    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 304
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_6

    const/4 v1, 0x1

    .line 305
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->mPaddingEnd:Landroid/view/View;

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    const/16 v0, 0x8

    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
