.class Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;
.super Ljava/lang/Object;
.source "WidgetsFullSheet.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 140
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->-$$Nest$fgetmAdapters(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/util/SparseArray;

    move-result-object v0

    .line 144
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    .line 145
    .local v0, "searchRecyclerView":Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->-$$Nest$fgetmIsInSearchMode(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->bindFastScrollbar()V

    .line 148
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 152
    return-void
.end method
