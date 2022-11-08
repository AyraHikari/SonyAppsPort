.class public final synthetic Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Picture;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Picture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Picture;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Picture;

    invoke-static {v0, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->lambda$createFolderAdaptiveIcon$1(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V

    return-void
.end method
