.class public interface abstract Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;
.super Ljava/lang/Object;
.source "RecentsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RecentsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskVisualsChangeListener"
.end annotation


# virtual methods
.method public abstract onTaskIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract onTaskThumbnailChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/systemui/shared/recents/model/Task;
.end method
