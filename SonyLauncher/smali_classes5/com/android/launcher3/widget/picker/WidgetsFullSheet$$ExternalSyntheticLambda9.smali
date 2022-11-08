.class public final synthetic Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda9;->f$0:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda9;->f$0:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
