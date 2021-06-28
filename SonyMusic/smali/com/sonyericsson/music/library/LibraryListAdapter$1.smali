.class Lcom/sonyericsson/music/library/LibraryListAdapter$1;
.super Landroid/database/DataSetObserver;
.source "LibraryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/LibraryListAdapter;-><init>(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/LibraryListAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/LibraryListAdapter;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListAdapter$1;->this$0:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter$1;->this$0:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter$1;->this$0:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
