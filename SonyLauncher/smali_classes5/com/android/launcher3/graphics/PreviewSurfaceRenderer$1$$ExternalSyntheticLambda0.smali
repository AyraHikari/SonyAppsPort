.class public final synthetic Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->onDestroy()V

    return-void
.end method
