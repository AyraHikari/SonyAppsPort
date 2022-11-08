.class final Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview;
.super Lcom/android/launcher3/icons/LauncherIcons;
.source "LauncherPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LauncherIconsForPreview"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/content/Context;III)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fillResIconDpi"    # I
    .param p4, "iconBitmapSize"    # I
    .param p5, "poolId"    # I

    .line 155
    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    .line 156
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/icons/LauncherIcons;-><init>(Landroid/content/Context;III)V

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/content/Context;IIILcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/content/Context;III)V

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview;->clear()V

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-static {v0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->-$$Nest$fgetmIconPool(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method
