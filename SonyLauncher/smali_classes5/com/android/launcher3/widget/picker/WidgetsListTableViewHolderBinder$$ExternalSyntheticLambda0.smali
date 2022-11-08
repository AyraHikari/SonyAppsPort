.class public final synthetic Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

.field public final synthetic f$1:Lcom/android/launcher3/model/WidgetItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/model/WidgetItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/model/WidgetItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/model/WidgetItem;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->lambda$bindViewHolder$0(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;)V

    return-void
.end method
