.class public final synthetic Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ILcom/android/launcher3/pm/ShortcutConfigActivityInfo;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    iput p2, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    iput p4, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    iget v1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    iget v3, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;->f$4:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->lambda$generateShortcutPreview$2$com-android-launcher3-widget-DatabaseWidgetPreviewLoader(ILcom/android/launcher3/pm/ShortcutConfigActivityInfo;IILandroid/graphics/Canvas;)V

    return-void
.end method
