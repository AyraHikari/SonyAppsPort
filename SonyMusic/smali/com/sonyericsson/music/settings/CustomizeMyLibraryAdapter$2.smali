.class Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;
.super Ljava/lang/Object;
.source "CustomizeMyLibraryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;->this$0:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    iput-object p2, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;->val$itemHolder:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;->val$itemHolder:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;

    invoke-static {p1}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->access$100(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;)Landroid/widget/CheckedTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;->this$0:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    invoke-static {v1}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->access$200(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;->this$0:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    iget-object p1, p1, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mListener:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;

    invoke-interface {p1}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;->onAllDeselected()V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;->val$itemHolder:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;

    invoke-static {v0}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->access$100(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;->val$itemHolder:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;

    invoke-static {v0}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->access$300(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;)Lcom/sonyericsson/music/library/Page$PageContainer;

    move-result-object v0

    iput-boolean p1, v0, Lcom/sonyericsson/music/library/Page$PageContainer;->mIsEnabled:Z

    .line 84
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;->this$0:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    invoke-static {p1}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->access$400(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;->this$0:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->access$500(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/library/Page;->customizePagesOrder(Landroid/content/Context;Ljava/util/List;)V

    .line 85
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$2;->this$0:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    iget-object p1, p1, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->mListener:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;

    invoke-interface {p1}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;->onChanged()V

    :goto_0
    return-void
.end method
