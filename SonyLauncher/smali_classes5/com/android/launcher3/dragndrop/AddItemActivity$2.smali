.class Lcom/android/launcher3/dragndrop/AddItemActivity$2;
.super Landroid/os/AsyncTask;
.source "AddItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/AddItemActivity;->applyWidgetItemAsync(Ljava/util/function/Supplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/launcher3/model/WidgetItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

.field final synthetic val$itemProvider:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/util/function/Supplier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/dragndrop/AddItemActivity;

    .line 281
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->val$itemProvider:Ljava/util/function/Supplier;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/launcher3/model/WidgetItem;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->val$itemProvider:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/WidgetItem;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 281
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->doInBackground([Ljava/lang/Void;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/launcher3/model/WidgetItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->-$$Nest$fgetmWidgetCell(Lcom/android/launcher3/dragndrop/AddItemActivity;)Lcom/android/launcher3/widget/WidgetCell;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;)V

    .line 290
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 281
    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->onPostExecute(Lcom/android/launcher3/model/WidgetItem;)V

    return-void
.end method
