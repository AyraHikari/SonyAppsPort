.class Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable$MyConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "FolderAdaptiveIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyConstantState"
.end annotation


# instance fields
.field private final mRenderer:Lcom/android/launcher3/icons/BitmapRenderer;


# direct methods
.method constructor <init>(Lcom/android/launcher3/icons/BitmapRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/android/launcher3/icons/BitmapRenderer;

    .line 240
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable$MyConstantState;->mRenderer:Lcom/android/launcher3/icons/BitmapRenderer;

    .line 242
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 246
    new-instance v0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable$MyConstantState;->mRenderer:Lcom/android/launcher3/icons/BitmapRenderer;

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;-><init>(Lcom/android/launcher3/icons/BitmapRenderer;)V

    return-object v0
.end method
