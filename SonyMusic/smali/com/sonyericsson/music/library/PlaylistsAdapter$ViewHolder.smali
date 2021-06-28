.class Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PlaylistsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/PlaylistsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field final mCheckbox:Landroid/widget/CheckBox;

.field final mContextMenuIcon:Landroid/widget/ImageView;

.field final mContextMenuTouchArea:Landroid/widget/FrameLayout;

.field final mImage:Landroid/widget/ImageView;

.field final mText1:Landroid/widget/TextView;

.field final mText2:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/CheckBox;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mText1:Landroid/widget/TextView;

    .line 85
    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mText2:Landroid/widget/TextView;

    .line 86
    iput-object p3, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    .line 87
    iput-object p4, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mContextMenuIcon:Landroid/widget/ImageView;

    .line 88
    iput-object p5, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mContextMenuTouchArea:Landroid/widget/FrameLayout;

    .line 89
    iput-object p6, p0, Lcom/sonyericsson/music/library/PlaylistsAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    return-void
.end method
