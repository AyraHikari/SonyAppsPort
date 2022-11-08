.class Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;
.super Ljava/lang/Object;
.source "SettingsChangeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/logging/SettingsChangeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggablePref"
.end annotation


# instance fields
.field public defaultValue:Z

.field public eventIdOff:I

.field public eventIdOn:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;-><init>()V

    return-void
.end method
