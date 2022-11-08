.class public interface abstract Lcom/android/launcher3/recyclerview/ViewHolderBinder;
.super Ljava/lang/Object;
.source "ViewHolderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/recyclerview/ViewHolderBinder$ListPosition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final POSITION_DEFAULT:I = 0x0

.field public static final POSITION_FIRST:I = 0x1

.field public static final POSITION_LAST:I = 0x2


# virtual methods
.method public abstract bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TT;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TV;"
        }
    .end annotation
.end method

.method public unbindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/android/launcher3/recyclerview/ViewHolderBinder;, "Lcom/android/launcher3/recyclerview/ViewHolderBinder<TT;TV;>;"
    .local p1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TV;"
    return-void
.end method
