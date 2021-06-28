.class public Lcom/sonymobile/music/common/GoogleAnalyticsProvider$Methods;
.super Ljava/lang/Object;
.source "GoogleAnalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/common/GoogleAnalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Methods"
.end annotation


# static fields
.field public static final PREPARE:Ljava/lang/String; = "prepare"

.field public static final SEND_GA_EVENT:Ljava/lang/String; = "send-event"

.field public static final SEND_GA_EXCEPTION:Ljava/lang/String; = "send-exception"

.field public static final SEND_GA_SCREENVIEW:Ljava/lang/String; = "send-screenview"

.field public static final SET_GA_CUSTOM_DIMENSION:Ljava/lang/String; = "set-custom-dimension"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
