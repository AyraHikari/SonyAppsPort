.class Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$1;
.super Ljava/lang/Object;
.source "SliceLiveData.java"

# interfaces
.implements Landroidx/slice/SliceUtils$SliceActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->loadInitialSlice()V
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

    .line 221
    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$1;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSliceAction(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "actionUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 225
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$1;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->goLive(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)V

    .line 226
    return-void
.end method
