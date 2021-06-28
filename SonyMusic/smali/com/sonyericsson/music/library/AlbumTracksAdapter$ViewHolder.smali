.class Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlbumTracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/AlbumTracksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field contextMenuIcon:Landroid/widget/ImageView;

.field contextMenuTouchArea:Landroid/widget/FrameLayout;

.field highResAudioIndicator:Landroid/widget/ImageView;

.field mainContainer:Landroid/widget/LinearLayout;

.field text1:Landroid/widget/TextView;

.field text2:Landroid/widget/TextView;

.field trackNumber:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/library/AlbumTracksAdapter$1;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;-><init>()V

    return-void
.end method
