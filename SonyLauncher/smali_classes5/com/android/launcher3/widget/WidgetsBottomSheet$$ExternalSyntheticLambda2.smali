.class public final synthetic Lcom/android/launcher3/widget/WidgetsBottomSheet$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

.field public final synthetic f$1:Landroid/widget/TableRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;Landroid/widget/TableRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$$ExternalSyntheticLambda2;->f$1:Landroid/widget/TableRow;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$$ExternalSyntheticLambda2;->f$1:Landroid/widget/TableRow;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->lambda$onWidgetsBound$1$com-android-launcher3-widget-WidgetsBottomSheet(Landroid/widget/TableRow;Lcom/android/launcher3/model/WidgetItem;)V

    return-void
.end method
