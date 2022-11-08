.class public final synthetic Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

.field public final synthetic f$1:Lcom/android/launcher3/model/WidgetItem;

.field public final synthetic f$2:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    iput-object p2, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/model/WidgetItem;

    iput-object p3, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda1;->f$2:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/model/WidgetItem;

    iget-object v2, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda1;->f$2:Landroid/util/Size;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->lambda$loadPreview$0$com-android-launcher3-widget-DatabaseWidgetPreviewLoader(Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
