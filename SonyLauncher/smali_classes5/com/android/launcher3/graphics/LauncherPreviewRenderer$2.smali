.class Lcom/android/launcher3/graphics/LauncherPreviewRenderer$2;
.super Landroid/widget/TextClock;
.source "LauncherPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # Landroid/util/AttributeSet;

    .line 272
    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$2;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    invoke-direct {p0, p2, p3}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$2;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    invoke-static {v0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->-$$Nest$fgetmUiHandler(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
