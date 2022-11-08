.class public final synthetic Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

.field public final synthetic f$8:Lcom/android/launcher3/DeviceProfile;

.field public final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ZLandroid/graphics/drawable/Drawable;IIIILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    iput-boolean p2, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$3:I

    iput p5, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$4:I

    iput p6, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$5:I

    iput p7, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$6:I

    iput-object p8, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$7:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iput-object p9, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$8:Lcom/android/launcher3/DeviceProfile;

    iput p10, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$9:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    iget-boolean v1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$1:Z

    iget-object v2, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$3:I

    iget v4, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$4:I

    iget v5, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$5:I

    iget v6, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$6:I

    iget-object v7, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$7:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget-object v8, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$8:Lcom/android/launcher3/DeviceProfile;

    iget v9, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;->f$9:F

    move-object v10, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->lambda$generateWidgetPreview$1$com-android-launcher3-widget-DatabaseWidgetPreviewLoader(ZLandroid/graphics/drawable/Drawable;IIIILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLandroid/graphics/Canvas;)V

    return-void
.end method
