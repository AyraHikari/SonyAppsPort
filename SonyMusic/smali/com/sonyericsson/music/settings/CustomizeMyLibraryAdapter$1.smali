.class Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$1;
.super Ljava/lang/Object;
.source "CustomizeMyLibraryAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

.field final synthetic val$itemHolder:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$1;->this$0:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    iput-object p2, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$1;->val$itemHolder:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 68
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result p1

    if-nez p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$1;->this$0:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    iget-object p1, p1, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mListener:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;

    iget-object p2, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$1;->val$itemHolder:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;

    invoke-interface {p1, p2}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;->onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
