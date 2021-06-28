.class Lcom/sonyericsson/music/settings/OpenSourceActivity$OssAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OpenSourceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/settings/OpenSourceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OssAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/sonyericsson/music/settings/OpenSourceActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/settings/OpenSourceActivity;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssAdapter;->mActivity:Lcom/sonyericsson/music/settings/OpenSourceActivity;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 93
    check-cast p1, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssViewHolder;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssAdapter;->mActivity:Lcom/sonyericsson/music/settings/OpenSourceActivity;

    const v0, 0x7f1000cb

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssViewHolder;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssAdapter;->mActivity:Lcom/sonyericsson/music/settings/OpenSourceActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0093

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    new-instance p2, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssViewHolder;

    invoke-direct {p2, p1}, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
