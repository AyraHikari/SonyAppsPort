.class public interface abstract Lcom/sonyericsson/music/common/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;
    }
.end annotation


# static fields
.field public static final ACTION_RENEW_LICENSE:Ljava/lang/String; = "com.sonyericsson.drmdialogs.RENEW_LICENSE"

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "com.sonyericsson.drmdialogs.EXTRA_FILE_PATH"


# virtual methods
.method public abstract canForward(Landroid/net/Uri;)Z
.end method

.method public abstract close()V
.end method

.method public abstract hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;
.end method

.method public abstract renewRights(Landroid/app/Activity;Landroid/net/Uri;)V
.end method

.method public abstract validateDrm(Landroid/app/Activity;Landroid/net/Uri;)Z
.end method
