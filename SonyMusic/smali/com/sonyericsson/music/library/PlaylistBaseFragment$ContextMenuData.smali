.class Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;
.super Ljava/lang/Object;
.source "PlaylistBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/PlaylistBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContextMenuData"
.end annotation


# instance fields
.field mContentValues:Landroid/content/ContentValues;

.field mSelectedItemPosition:I


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;I)V
    .locals 0

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;->mContentValues:Landroid/content/ContentValues;

    .line 740
    iput p2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;->mSelectedItemPosition:I

    return-void
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 748
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$ContextMenuData;->mSelectedItemPosition:I

    return v0
.end method
