.class Lcom/android/launcher3/logging/EventLogArray$EventEntry;
.super Ljava/lang/Object;
.source "EventLogArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/EventLogArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventEntry"
.end annotation


# instance fields
.field private duplicateCount:I

.field private event:Ljava/lang/String;

.field private extras:F

.field private time:J

.field private traceId:I

.field private type:I


# direct methods
.method static bridge synthetic -$$Nest$fgetduplicateCount(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->duplicateCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetevent(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->event:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetextras(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->extras:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettime(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->time:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettraceId(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->traceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputduplicateCount(Lcom/android/launcher3/logging/EventLogArray$EventEntry;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->duplicateCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logging/EventLogArray$EventEntry-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public update(ILjava/lang/String;FI)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # F
    .param p4, "traceId"    # I

    .line 142
    iput p1, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->type:I

    .line 143
    iput-object p2, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->event:Ljava/lang/String;

    .line 144
    iput p3, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->extras:F

    .line 145
    iput p4, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->traceId:I

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->time:J

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->duplicateCount:I

    .line 148
    return-void
.end method
