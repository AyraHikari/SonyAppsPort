.class Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$2;
.super Ljava/lang/Object;
.source "SliceLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->onActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;


# direct methods
.method constructor <init>(Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    .line 260
    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$2;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 263
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$2;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->loadInitialSlice()V

    .line 264
    return-void
.end method
