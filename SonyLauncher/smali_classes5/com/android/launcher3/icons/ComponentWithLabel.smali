.class public interface abstract Lcom/android/launcher3/icons/ComponentWithLabel;
.super Ljava/lang/Object;
.source "ComponentWithLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;
    }
.end annotation


# virtual methods
.method public abstract getComponent()Landroid/content/ComponentName;
.end method

.method public abstract getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
.end method

.method public abstract getUser()Landroid/os/UserHandle;
.end method
