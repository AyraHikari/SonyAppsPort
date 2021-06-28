.class Lcom/sonyericsson/music/library/PlaylistOperationAdapter$ViewHolder;
.super Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;
.source "PlaylistOperationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/PlaylistOperationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;-><init>()V

    return-void
.end method
