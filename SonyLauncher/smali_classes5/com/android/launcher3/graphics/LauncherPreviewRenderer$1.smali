.class Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "LauncherPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/graphics/LauncherPreviewRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 201
    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    return-void
.end method
